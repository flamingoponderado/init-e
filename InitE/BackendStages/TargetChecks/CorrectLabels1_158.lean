import InitE.BackendStages.TargetChecks.CorrectLabels0_158
import InitE.BackendStages.TargetChecks.CorrectEncode0_158
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_158
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_158_eq : LabToTarget.sectionLabels 42232 Reencode0_158.lines [] = (43496, localLabels1_158) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 42232 43496 riscvConfig.encode
    Initial158.lines Reencode0_158.lines [] Reencode0_158_eq).trans
    (localLabels0_158_eq.trans (by kernel_rfl))
#print axioms localLabels1_158_eq
end InitE.BackendStages.TargetChecks.Correct
