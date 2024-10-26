.class public Lch/qos/logback/classic/BasicConfigurator;
.super Lch/qos/logback/core/spi/ContextAwareBase;

# interfaces
.implements Lch/qos/logback/classic/spi/Configurator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lch/qos/logback/classic/LoggerContext;)V
    .locals 3

    const-string v0, "Setting up default configuration."

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/BasicConfigurator;->addInfo(Ljava/lang/String;)V

    new-instance v0, Lch/qos/logback/core/ConsoleAppender;

    invoke-direct {v0}, Lch/qos/logback/core/ConsoleAppender;-><init>()V

    invoke-virtual {v0, p1}, Lch/qos/logback/core/ConsoleAppender;->setContext(Lch/qos/logback/core/Context;)V

    const-string v1, "console"

    invoke-virtual {v0, v1}, Lch/qos/logback/core/ConsoleAppender;->setName(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;

    invoke-direct {v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;-><init>()V

    invoke-virtual {v1, p1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setContext(Lch/qos/logback/core/Context;)V

    new-instance v2, Lch/qos/logback/classic/layout/TTLLLayout;

    invoke-direct {v2}, Lch/qos/logback/classic/layout/TTLLLayout;-><init>()V

    invoke-virtual {v2, p1}, Lch/qos/logback/classic/layout/TTLLLayout;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {v2}, Lch/qos/logback/classic/layout/TTLLLayout;->start()V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setLayout(Lch/qos/logback/core/Layout;)V

    invoke-virtual {v0, v1}, Lch/qos/logback/core/ConsoleAppender;->setEncoder(Lch/qos/logback/core/encoder/Encoder;)V

    invoke-virtual {v0}, Lch/qos/logback/core/ConsoleAppender;->start()V

    const-string v1, "ROOT"

    invoke-virtual {p1, v1}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    return-void
.end method
