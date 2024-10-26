.class public Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
.super Ljava/lang/Object;
.source "FieldDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureToken"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    .line 544
    iput-object p2, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 568
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 569
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    .line 570
    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 562
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 575
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 576
    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
