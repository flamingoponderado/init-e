import InitE.BackendStages.TargetChecks.CorrectLabels0_303
import InitE.BackendStages.TargetChecks.CorrectEncode0_303
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_303_eq : LabToTarget.sectionLabels 198472 Reencode0_303.lines [] = (201132, localLabels1_303) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 198472 201132 riscvConfig.encode
    Initial303.lines Reencode0_303.lines [] Reencode0_303_eq).trans
    (localLabels0_303_eq.trans (by kernel_rfl))
#print axioms localLabels1_303_eq
end InitE.BackendStages.TargetChecks.Correct
