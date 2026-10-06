import InitE.BackendStages.TargetChecks.CorrectLabels0_454
import InitE.BackendStages.TargetChecks.CorrectEncode0_454
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_454_eq : LabToTarget.sectionLabels 309736 Reencode0_454.lines [] = (310132, localLabels1_454) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 309736 310132 riscvConfig.encode
    Initial454.lines Reencode0_454.lines [] Reencode0_454_eq).trans
    (localLabels0_454_eq.trans (by kernel_rfl))
#print axioms localLabels1_454_eq
end InitE.BackendStages.TargetChecks.Correct
