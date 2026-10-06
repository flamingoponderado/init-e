import InitE.BackendStages.TargetChecks.CorrectLabels0_349
import InitE.BackendStages.TargetChecks.CorrectEncode0_349
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_349
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_349_eq : LabToTarget.sectionLabels 245616 Reencode0_349.lines [] = (245632, localLabels1_349) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245616 245632 riscvConfig.encode
    Initial349.lines Reencode0_349.lines [] Reencode0_349_eq).trans
    (localLabels0_349_eq.trans (by kernel_rfl))
#print axioms localLabels1_349_eq
end InitE.BackendStages.TargetChecks.Correct
