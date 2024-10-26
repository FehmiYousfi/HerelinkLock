.class public Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;
.super Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape$AbstractBase;
.source "Implementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CacheValueField"
.end annotation


# instance fields
.field private final fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final hashCode:I

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final suffix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;I)V
    .locals 0

    .line 858
    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape$AbstractBase;-><init>()V

    .line 859
    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 860
    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 861
    iput-object p3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->suffix:Ljava/lang/String;

    .line 862
    iput p4, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->hashCode:I

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 872
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 877
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 882
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/lit16 v0, v0, 0x1018

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cachedValue"

    aput-object v2, v0, v1

    .line 889
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->suffix:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->hashCode:I

    invoke-static {v1}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s$%s$%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 867
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method
