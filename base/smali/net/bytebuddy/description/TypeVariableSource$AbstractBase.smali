.class public abstract Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;
.super Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;
.source "TypeVariableSource.java"

# interfaces
.implements Lnet/bytebuddy/description/TypeVariableSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/TypeVariableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public findVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 113
    invoke-virtual {p0}, Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeList$Generic;

    .line 114
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;->getEnclosingSource()Lnet/bytebuddy/description/TypeVariableSource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/TypeVariableSource;->findVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    :goto_0
    return-object p1

    .line 120
    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object p1
.end method
