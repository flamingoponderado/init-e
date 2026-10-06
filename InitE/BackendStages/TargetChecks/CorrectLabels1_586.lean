import InitE.BackendStages.TargetChecks.CorrectLabels0_586
import InitE.BackendStages.TargetChecks.CorrectEncode0_586
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_586_eq : LabToTarget.sectionLabels 426248 Reencode0_586.lines [] = (428488, localLabels1_586) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 426248 428488 riscvConfig.encode
    Initial586.lines Reencode0_586.lines [] Reencode0_586_eq).trans
    (localLabels0_586_eq.trans (by kernel_rfl))
#print axioms localLabels1_586_eq
end InitE.BackendStages.TargetChecks.Correct
