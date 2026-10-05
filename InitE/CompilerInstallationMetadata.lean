import InitE.CompilerComputation
import InitE.BaselineInstallationFacts

open scoped InitE.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open Flapjack Flapjack.Compiler.Backend.LabToTarget

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
theorem baseline_installation_metadata :
    baselineConfig.labConf.ffiNames = some baselineNames ∧
    baselineMmio.map (fun rec => nativePc+rec.entryPc) =
      (baselineEntryPcs.map BitVec.toNat).drop 20 ∧
    760+InitECandidate.nativeCode.length+ffiOffset*(20+3) < 2^64 := by decide_cbv

end InitE
