.class public final Lch/qos/logback/core/pattern/LiteralConverter;
.super Lch/qos/logback/core/pattern/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/pattern/Converter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field literal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/pattern/Converter;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/pattern/LiteralConverter;->literal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p1, p0, Lch/qos/logback/core/pattern/LiteralConverter;->literal:Ljava/lang/String;

    return-object p1
.end method
