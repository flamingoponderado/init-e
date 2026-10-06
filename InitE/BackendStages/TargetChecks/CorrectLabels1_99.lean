import InitE.BackendStages.TargetChecks.CorrectLabels0_99
import InitE.BackendStages.TargetChecks.CorrectEncode0_99
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_99
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_99_eq : LabToTarget.sectionLabels 12608 Reencode0_99.lines [] = (12632, localLabels1_99) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 12608 12632 riscvConfig.encode
    Initial99.lines Reencode0_99.lines [] Reencode0_99_eq).trans
    (localLabels0_99_eq.trans (by kernel_rfl))
#print axioms localLabels1_99_eq
end InitE.BackendStages.TargetChecks.Correct
