.class public abstract Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.super Ljava/lang/Object;
.source "ElementMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher$Junction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/ElementMatcher$Junction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TV;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TU;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TU;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Conjunction;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Conjunction;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TV;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TU;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TU;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method
