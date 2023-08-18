import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): any {
    return {
      code: 200,
      message: `Hello World! ${process.env.NODE_ENV}`,
      old: process.env.OLD,
      clas: process.env.CLASS,
    };
  }
}
