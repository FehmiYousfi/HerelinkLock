.class final Lorg/mockito/internal/util/reflection/Fields$2;
.super Ljava/lang/Object;
.source "Fields.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/util/reflection/Fields;->nullField()Lorg/mockito/internal/util/collections/ListUtil$Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
        "Lorg/mockito/internal/util/reflection/InstanceField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 86
    check-cast p1, Lorg/mockito/internal/util/reflection/InstanceField;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/Fields$2;->isOut(Lorg/mockito/internal/util/reflection/InstanceField;)Z

    move-result p1

    return p1
.end method

.method public isOut(Lorg/mockito/internal/util/reflection/InstanceField;)Z
    .locals 0

    .line 88
    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/InstanceField;->isNull()Z

    move-result p1

    return p1
.end method
