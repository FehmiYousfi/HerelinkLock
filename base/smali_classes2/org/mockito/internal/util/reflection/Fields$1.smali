.class final Lorg/mockito/internal/util/reflection/Fields$1;
.super Ljava/lang/Object;
.source "Fields.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/util/reflection/Fields;->annotatedBy([Ljava/lang/Class;)Lorg/mockito/internal/util/collections/ListUtil$Filter;
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


# instance fields
.field final synthetic val$annotations:[Ljava/lang/Class;


# direct methods
.method constructor <init>([Ljava/lang/Class;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/Fields$1;->val$annotations:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 66
    check-cast p1, Lorg/mockito/internal/util/reflection/InstanceField;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/Fields$1;->isOut(Lorg/mockito/internal/util/reflection/InstanceField;)Z

    move-result p1

    return p1
.end method

.method public isOut(Lorg/mockito/internal/util/reflection/InstanceField;)Z
    .locals 5

    .line 68
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/Fields$1;->val$annotations:[Ljava/lang/Class;

    const-string v1, "Provide at least one annotation class"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/Fields$1;->val$annotations:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 71
    invoke-virtual {p1, v4}, Lorg/mockito/internal/util/reflection/InstanceField;->isAnnotatedBy(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
