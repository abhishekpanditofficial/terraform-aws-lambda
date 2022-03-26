package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformLambdaExample(t *testing.T) {
	// Declaring assert for using it multiple times
	assert := assert.New(t)
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/lambda",
		Vars: map[string]interface{}{
			"filename":"lambda_function_payload.zip",
            "function_name":"lambda_function_name",
            "handler":"index.js",
            "runtime":"nodejs12.x",
		},
	})

	terraform.InitAndApply(t, terraformOptions)

	defer terraform.Destroy(t, terraformOptions)

	// Lambda test
	primaryBucket := terraform.Output(t, terraformOptions, "function_name")
	assert.Equal(t, "lambda_function_name", primaryBucket)

}