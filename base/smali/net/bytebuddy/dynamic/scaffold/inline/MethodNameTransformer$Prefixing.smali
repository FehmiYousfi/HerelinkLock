.class public Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;
.super Ljava/lang/Object;
.source "MethodNameTransformer.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prefixing"
.end annotation


# static fields
.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "original"


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "original"

    .line 83
    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 66
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;->prefix:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;->prefix:Ljava/lang/String;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public transform(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;->prefix:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
