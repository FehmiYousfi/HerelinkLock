.class public Lnet/bytebuddy/description/method/MethodList$ForTokens;
.super Lnet/bytebuddy/description/method/MethodList$AbstractBase;
.source "MethodList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTokens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/MethodList$AbstractBase<",
        "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodList$AbstractBase;-><init>()V

    .line 204
    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodList$ForTokens;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 205
    iput-object p2, p0, Lnet/bytebuddy/description/method/MethodList$ForTokens;->tokens:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/method/MethodDescription$Token;)V
    .locals 0

    .line 194
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/MethodList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodList$ForTokens;->get(I)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    .line 210
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodList$ForTokens;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodList$ForTokens;->tokens:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$Token;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 215
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodList$ForTokens;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
