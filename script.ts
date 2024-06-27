import { PrismaClient } from '@prisma/client'; 
const prisma = new PrismaClient()

async function main() {
    // ... you will write your prisma client queries here 
    const user = await prisma.user.create({ data: { name : 'Kyle'}});
    // const user = await prisma.user.findMany();
    // console.log(user);

    // await prisma.user.deleteMany();

    // const user = await prisma.user.create({
    //    data: {
    //     name: "Kyle", 
    //     email: "kyle@test.com", 
    //     age: 27
    //    },
    // })

    // const user = await prisma.user.create({
    //     data: {
    //       email: 'elsa@prisma.io',
    //       name: 'Elsa Prisma',
    //     },
    //   });
      

    console.log(user);
    // console.log("Hello");
}

main()
    .catch(e => {
        console.log(e.message)
    })
    .finally(async () => {
        await prisma.$disconnect()
    });