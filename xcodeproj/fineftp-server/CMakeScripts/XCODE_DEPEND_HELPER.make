# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.server.Debug:
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Debug${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Debug${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/Debug/server.build/$(OBJDIR)/armv7/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/Debug/server.build/$(OBJDIR)/armv7s/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/Debug/server.build/$(OBJDIR)/arm64/libfineftp-server.a


PostBuild.server.Release:
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Release${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/Release${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/Release/server.build/$(OBJDIR)/armv7/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/Release/server.build/$(OBJDIR)/armv7s/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/Release/server.build/$(OBJDIR)/arm64/libfineftp-server.a


PostBuild.server.MinSizeRel:
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/MinSizeRel/server.build/$(OBJDIR)/armv7/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/MinSizeRel/server.build/$(OBJDIR)/armv7s/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/MinSizeRel/server.build/$(OBJDIR)/arm64/libfineftp-server.a


PostBuild.server.RelWithDebInfo:
/Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a:
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/RelWithDebInfo/server.build/$(OBJDIR)/armv7/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/RelWithDebInfo/server.build/$(OBJDIR)/armv7s/libfineftp-server.a
	/bin/rm -f /Users/bbaron/workspacec/fineftp-server/xcodeproj/fineftp-server/server.build/RelWithDebInfo/server.build/$(OBJDIR)/arm64/libfineftp-server.a




# For each target create a dummy ruleso the target does not have to exist
