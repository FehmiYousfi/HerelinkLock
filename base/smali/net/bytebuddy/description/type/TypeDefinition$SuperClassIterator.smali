.class public Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;
.super Ljava/lang/Object;
.source "TypeDefinition.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperClassIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/bytebuddy/description/type/TypeDefinition;",
        ">;"
    }
.end annotation


# instance fields
.field private nextClass:Lnet/bytebuddy/description/type/TypeDefinition;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->nextClass:Lnet/bytebuddy/description/type/TypeDefinition;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->nextClass:Lnet/bytebuddy/description/type/TypeDefinition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->next()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 2

    .line 271
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->nextClass:Lnet/bytebuddy/description/type/TypeDefinition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->nextClass:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    iput-object v1, p0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->nextClass:Lnet/bytebuddy/description/type/TypeDefinition;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->nextClass:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    iput-object v1, p0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;->nextClass:Lnet/bytebuddy/description/type/TypeDefinition;

    throw v0

    .line 272
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "End of type hierarchy"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
