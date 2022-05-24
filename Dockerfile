# https://github.com/nasa/openmct/blob/c56fe6d8f34191e7de45db75e14459344adbd5d4/.circleci/config.yml#L5
FROM  mcr.microsoft.com/playwright:v1.21.1-focal
WORKDIR /example
# https://github.com/nasa/openmct/blob/c56fe6d8f34191e7de45db75e14459344adbd5d4/package.json
COPY package.json .
# NB: There is no lockfile in this project
RUN npm i
COPY ./example.spec.ts .
