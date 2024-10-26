.class public Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;
.super Ljava/lang/Object;
.source "ArgumentTypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterIndexToken"
.end annotation


# instance fields
.field private final parameterIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 238
    instance-of p1, p1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 238
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    iget p1, p1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 238
    iget v0, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method
