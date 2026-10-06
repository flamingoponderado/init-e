import InitE.BackendStages.TargetChecks.CorrectLabels0_443
import InitE.BackendStages.TargetChecks.CorrectEncode0_443
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_443_eq : LabToTarget.sectionLabels 301960 Reencode0_443.lines [] = (302856, localLabels1_443) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 301960 302856 riscvConfig.encode
    Initial443.lines Reencode0_443.lines [] Reencode0_443_eq).trans
    (localLabels0_443_eq.trans (by kernel_rfl))
#print axioms localLabels1_443_eq
end InitE.BackendStages.TargetChecks.Correct
