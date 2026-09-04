{
  ...
}:

{

  xdg.configFile."rsstig/feeds.opml".text = ''
    <?xml version='1.0' encoding='UTF-8' ?>
    <opml version="1.0">
        <body>
            <outline
                text="Blog – Hackaday"
                description="Fresh hacks every day"
                xmlUrl="https://hackaday.com/blog/feed"
                type="rss"
            />
            <outline
                text="DistroWatch.com: News"
                description="Latest news on Linux distributions and BSD projects"
                xmlUrl="https://distrowatch.com/news/dw.xml"
                type="rss"
            />
            <outline
                text="LTT Labs: Articles"
                description="Welcome to LTT Labs - your go-to destination for all things tech. Explore comprehensive test results, insightful commentary, and the latest analysis in hardware."
                xmlUrl="https://www.lttlabs.com/articles/rss.xml"
                type="rss"
            />
            <outline
                text="Release notes from Mindustry"
                description="Release notes from Mindustry"
                xmlUrl="https://github.com/anuken/mindustry/releases.atom"
                type="rss"
            />
            <outline
                text="Rust Blog"
                description="Empowering everyone to build reliable and efficient software."
                xmlUrl="https://blog.rust-lang.org/feed.xml"
                type="rss"
            />
            <outline
                text="omnisearch, branch master"
                description="A modern lightweight metasearch engine with a clean design written in C."
                xmlUrl="https://git.bwaaa.monster/omnisearch/atom"
                type="rss"
            />
            <outline
                text="pkgit, branch master"
                description="a universal system-agnostic package manager"
                xmlUrl="https://git.symlinx.net/pkgit/atom"
                type="rss"
            />
            <outline
                text="xkcd.com"
                description="xkcd.com: A webcomic of romance and math humor."
                xmlUrl="https://xkcd.com/rss.xml"
                type="rss"
            />
        </body>
    </opml>
  '';

}
