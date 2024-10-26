.class public Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;
.super Lnet/bytebuddy/description/type/TypeList$AbstractBase;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedTypes"
.end annotation


# instance fields
.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;-><init>()V

    .line 84
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->get(I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 89
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getStackSize()I
    .locals 1

    .line 111
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->sizeOf(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toInternalNames()[Ljava/lang/String;
    .locals 5

    .line 99
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    .line 102
    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 104
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    sget-object v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->NO_INTERFACES:[Ljava/lang/String;

    :cond_1
    return-object v0
.end method
