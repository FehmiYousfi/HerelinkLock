.class public Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;
.super Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LazyEnumerationDescription"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;->this$0:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;

    invoke-direct {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 4

    .line 611
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;->this$0:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->access$300(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;->this$0:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->access$200(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;->this$0:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->access$200(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;->this$0:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->access$100(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;->this$0:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->access$100(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
