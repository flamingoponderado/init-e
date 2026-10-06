import InitE.BackendStages.TargetChecks.CorrectLabels0_180
import InitE.BackendStages.TargetChecks.CorrectEncode0_180
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_180_eq : LabToTarget.sectionLabels 55124 Reencode0_180.lines [] = (55136, localLabels1_180) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 55124 55136 riscvConfig.encode
    Initial180.lines Reencode0_180.lines [] Reencode0_180_eq).trans
    (localLabels0_180_eq.trans (by kernel_rfl))
#print axioms localLabels1_180_eq
end InitE.BackendStages.TargetChecks.Correct
