.class public Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;
.super Ljava/lang/Object;
.source "StackTraceFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

.field static final serialVersionUID:J = -0x4c5348f609cd3524L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleaner;

    invoke-direct {v1}, Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleaner;-><init>()V

    invoke-interface {v0, v1}, Lorg/mockito/plugins/StackTraceCleanerProvider;->getStackTraceCleaner(Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;)Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter([Ljava/lang/StackTraceElement;Z)[Ljava/lang/StackTraceElement;
    .locals 4

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 33
    sget-object v3, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    invoke-interface {v3, v2}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/StackTraceElement;

    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    return-object p1
.end method
