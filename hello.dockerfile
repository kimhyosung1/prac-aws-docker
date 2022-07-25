# FROM node:12
FROM 591362340905.dkr.ecr.ap-northeast-2.amazonaws.com/khs_base:latest as build


LABEL maintainer="stop70899@naver.com"
# 앱 디렉터리 생성
WORKDIR /hello_docker

# 앱 의존성 설치
# 가능한 경우(npm@5+) package.json과 package-lock.json을 모두 복사하기 위해
# 와일드카드를 사용
COPY package*.json ./

RUN npm install
# 프로덕션을 위한 코드를 빌드하는 경우
# RUN npm ci --only=production

# 앱 소스 추가
COPY . .

RUN npm run build

EXPOSE 8080

CMD [ "node", "dist/main" ]

# FROM 442595548368.dkr.ecr.ap-northeast-2.amazonaws.com/capa_base:latest as capa
# WORKDIR /capa
# COPY --from=build /capa /capa








# FROM 442595548368.dkr.ecr.ap-northeast-2.amazonaws.com/capa_base:latest as build

# LABEL maintainer="paul@capa.ai"

# WORKDIR /capa

# ARG NODE_ENV
# ENV NODE_ENV=${NODE_ENV}

# COPY ./apps ./apps
# COPY ./libs ./libs
# COPY ./i18n ./i18n
# COPY ./nest-cli.json .
# COPY ./package.json .
# COPY ./tsconfig.json .
# COPY ./tsconfig.build.json .
# COPY ./${NODE_ENV}.env .
# COPY ./capabilities.json .
# COPY ./capability.kr.csv .
# COPY ./firebase.json .

# ENV PATH=${PATH}:./node_modules/.bin

# RUN nest build common \
#  && nest build aws \
#  && nest build cache \
#  && nest build database \
#  && nest build gateway \
#  && nest build backoffice \
#  && nest build authentication \
#  && nest build quotation \
#  && nest build cloud \
#  && nest build connect \
#  && nest build file \
#  && nest build hoops \
#  && nest build hubspot \
#  && nest build creatable-data-transfer \
#  && nest build drawing-file-converter \
#  && nest build user-activity-log \
#  && nest build itp \
#  && nest build scheduler \
#  && nest build chat \
#  && nest build notification \
#  && rm -fr apps libs

# FROM 442595548368.dkr.ecr.ap-northeast-2.amazonaws.com/capa_base:latest as capa

# WORKDIR /capa

# COPY --from=build /capa /capa

