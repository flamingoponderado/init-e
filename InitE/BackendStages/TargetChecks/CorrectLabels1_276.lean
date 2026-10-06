import InitE.BackendStages.TargetChecks.CorrectLabels0_276
import InitE.BackendStages.TargetChecks.CorrectEncode0_276
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_276_eq : LabToTarget.sectionLabels 170036 Reencode0_276.lines [] = (174984, localLabels1_276) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 170036 174984 riscvConfig.encode
    Initial276.lines Reencode0_276.lines [] Reencode0_276_eq).trans
    (localLabels0_276_eq.trans (by kernel_rfl))
#print axioms localLabels1_276_eq
end InitE.BackendStages.TargetChecks.Correct
