.class public interface abstract Lorg/mockito/internal/progress/ArgumentMatcherStorage;
.super Ljava/lang/Object;
.source "ArgumentMatcherStorage.java"


# virtual methods
.method public abstract pullLocalizedMatchers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reportAnd()V
.end method

.method public abstract reportMatcher(Lorg/mockito/ArgumentMatcher;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract reportNot()V
.end method

.method public abstract reportOr()V
.end method

.method public abstract reset()V
.end method

.method public abstract validateState()V
.end method
