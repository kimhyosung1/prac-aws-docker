import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    console.log('test1');
    console.log('test2');
    console.log('test3');
    console.log('test4');
    return 'Hello World!';
  }
}
