import Guest.Ast
import Flapjack.RiscV.NativeSource
import InitECandidate.Program

namespace InitE

/-- The literal baseline code and bitmap data are precisely the native
compiler artifact on the fixed original parsed guest. -/
theorem baseline_artifact_matches :
    ((Flapjack.RiscV.NativeSource.compileDeclarations Guest.guestAst).map
      (fun artifact => (artifact.1, artifact.2.1))) =
        some (InitECandidate.nativeCode, InitECandidate.bitmaps) := by
  native_decide

end InitE

#print axioms InitE.baseline_artifact_matches
