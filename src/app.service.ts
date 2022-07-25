import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    console.log('test');
    console.log('test');
    return 'Hello World!';
  }
}
