.class public Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;
.super Ljava/lang/Object;
.source "LoadedTypeInitializer.java"

# interfaces
.implements Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final loadedTypeInitializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 151
    instance-of v1, v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    iget-object v0, v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 153
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/LoadedTypeInitializer;)V
    .locals 0

    .line 140
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 121
    instance-of p1, p1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 121
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

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

    .line 121
    iget-object v0, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

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

.method public isAlive()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 169
    invoke-interface {v1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 162
    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method
