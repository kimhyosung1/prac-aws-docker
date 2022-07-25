import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    console.log('test1');
    console.log('test2');
    console.log('test3');
    return 'Hello World!';
  }
}
