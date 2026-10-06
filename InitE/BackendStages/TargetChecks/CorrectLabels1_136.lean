import InitE.BackendStages.TargetChecks.CorrectLabels0_136
import InitE.BackendStages.TargetChecks.CorrectEncode0_136
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_136
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_136_eq : LabToTarget.sectionLabels 28688 Reencode0_136.lines [] = (29876, localLabels1_136) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 28688 29876 riscvConfig.encode
    Initial136.lines Reencode0_136.lines [] Reencode0_136_eq).trans
    (localLabels0_136_eq.trans (by kernel_rfl))
#print axioms localLabels1_136_eq
end InitE.BackendStages.TargetChecks.Correct
