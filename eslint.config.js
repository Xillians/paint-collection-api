export default [
	{
		files: ["src/**/*.ts"],
		ignores: [
			"node_modules/**",
			"dist/**",
			"db/**",
		],
		rules: {
			semi: "error",
			"prefer-const": "error"
		}
	}
];