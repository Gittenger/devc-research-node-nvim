import { v4 as uuid } from "uuid";

function main() {
	const arr = [];

	arr.forEach((el) => {
		console.log(el);
	});

	console.log(`Hello world with uuid: ${uuid()} `);
}

main();
