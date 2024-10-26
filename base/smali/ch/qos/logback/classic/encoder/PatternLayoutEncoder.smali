.class public Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
.super Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    new-instance v0, Lch/qos/logback/classic/PatternLayout;

    invoke-direct {v0}, Lch/qos/logback/classic/PatternLayout;-><init>()V

    iget-object v1, p0, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setPattern(Ljava/lang/String;)V

    iget-boolean v1, p0, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->outputPatternAsHeader:Z

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setOutputPatternAsHeader(Z)V

    invoke-virtual {v0}, Lch/qos/logback/classic/PatternLayout;->start()V

    iput-object v0, p0, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->layout:Lch/qos/logback/core/Layout;

    invoke-super {p0}, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->start()V

    return-void
.end method
