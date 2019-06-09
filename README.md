# Powerline fontpatcher on docker

## Example patch for Ricty Diminished font

```bash
curl -sSfL -O https://www.rs.tus.ac.jp/yyusa/ricty_diminished/ricty_diminished-4.1.1.tar.gz

tar zxf ricty_diminished-4.1.1.tar.gz

ls *.ttf | sed -e s#^#/data/#g | xargs docker run --rm -i -v $(pwd):/data iwai/powerline.fontpatcher
```
