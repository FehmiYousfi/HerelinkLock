.class public Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleanerProvider;
.super Ljava/lang/Object;
.source "DefaultStackTraceCleanerProvider.java"

# interfaces
.implements Lorg/mockito/plugins/StackTraceCleanerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackTraceCleaner(Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;)Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;
    .locals 0

    return-object p1
.end method
