import InitE.BackendStages.TargetChecks.CorrectLabels0_469
import InitE.BackendStages.TargetChecks.CorrectEncode0_469
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_469
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_469_eq : LabToTarget.sectionLabels 337064 Reencode0_469.lines [] = (337240, localLabels1_469) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 337064 337240 riscvConfig.encode
    Initial469.lines Reencode0_469.lines [] Reencode0_469_eq).trans
    (localLabels0_469_eq.trans (by kernel_rfl))
#print axioms localLabels1_469_eq
end InitE.BackendStages.TargetChecks.Correct
