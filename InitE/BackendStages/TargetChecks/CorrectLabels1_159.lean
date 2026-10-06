import InitE.BackendStages.TargetChecks.CorrectLabels0_159
import InitE.BackendStages.TargetChecks.CorrectEncode0_159
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_159_eq : LabToTarget.sectionLabels 43496 Reencode0_159.lines [] = (43516, localLabels1_159) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 43496 43516 riscvConfig.encode
    Initial159.lines Reencode0_159.lines [] Reencode0_159_eq).trans
    (localLabels0_159_eq.trans (by kernel_rfl))
#print axioms localLabels1_159_eq
end InitE.BackendStages.TargetChecks.Correct
