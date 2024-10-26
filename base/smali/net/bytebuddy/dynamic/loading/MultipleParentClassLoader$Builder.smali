.class public Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
.super Ljava/lang/Object;
.source "MultipleParentClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final ONLY:I


# instance fields
.field private final classLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    return-void
.end method

.method private doBuild(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    .line 313
    new-instance v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 238
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    new-instance p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public varargs append([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 199
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs append([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 0

    .line 225
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Ljava/lang/ClassLoader;
    .locals 2

    .line 279
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    const/4 v1, 0x0

    .line 280
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public build(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    .line 300
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->doBuild(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 161
    instance-of p1, p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

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

.method public filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 256
    invoke-interface {p1, v2}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_1
    new-instance p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 161
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

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
