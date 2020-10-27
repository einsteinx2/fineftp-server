# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.example.Debug:
PostBuild.server.Debug: /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/Debug${EFFECTIVE_PLATFORM_NAME}/example.app/example
/Users/bbaron/workspacec/fineftp-server/xcodeproj/example/Debug${EFFECTIVE_PLATFORM_NAME}/example.app/example:\
	/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Debug${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/Debug${EFFECTIVE_PLATFORM_NAME}/example.app/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/Debug/example.build/$(OBJDIR)/armv7/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/Debug/example.build/$(OBJDIR)/armv7s/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/Debug/example.build/$(OBJDIR)/arm64/example


PostBuild.example.Release:
PostBuild.server.Release: /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/Release${EFFECTIVE_PLATFORM_NAME}/example.app/example
/Users/bbaron/workspacec/fineftp-server/xcodeproj/example/Release${EFFECTIVE_PLATFORM_NAME}/example.app/example:\
	/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Release${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/Release${EFFECTIVE_PLATFORM_NAME}/example.app/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/Release/example.build/$(OBJDIR)/armv7/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/Release/example.build/$(OBJDIR)/armv7s/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/Release/example.build/$(OBJDIR)/arm64/example


PostBuild.example.MinSizeRel:
PostBuild.server.MinSizeRel: /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/example.app/example
/Users/bbaron/workspacec/fineftp-server/xcodeproj/example/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/example.app/example:\
	/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/example.app/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/MinSizeRel/example.build/$(OBJDIR)/armv7/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/MinSizeRel/example.build/$(OBJDIR)/armv7s/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/MinSizeRel/example.build/$(OBJDIR)/arm64/example


PostBuild.example.RelWithDebInfo:
PostBuild.server.RelWithDebInfo: /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/example.app/example
/Users/bbaron/workspacec/fineftp-server/xcodeproj/example/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/example.app/example:\
	/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/example.app/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/RelWithDebInfo/example.build/$(OBJDIR)/armv7/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/RelWithDebInfo/example.build/$(OBJDIR)/armv7s/example
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/example/example.build/RelWithDebInfo/example.build/$(OBJDIR)/arm64/example




# For each target create a dummy ruleso the target does not have to exist
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Debug${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Release${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
