.class public Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;
.super Ljava/lang/Object;
.source "FieldLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 78
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

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

.method public getField()Lnet/bytebuddy/description/field/FieldDescription;
    .locals 1

    .line 102
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 78
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Simple;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

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

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method