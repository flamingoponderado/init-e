import InitE.BackendStages.TargetChecks.CorrectLabels0_267
import InitE.BackendStages.TargetChecks.CorrectEncode0_267
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_267_eq : LabToTarget.sectionLabels 163664 Reencode0_267.lines [] = (165668, localLabels1_267) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 163664 165668 riscvConfig.encode
    Initial267.lines Reencode0_267.lines [] Reencode0_267_eq).trans
    (localLabels0_267_eq.trans (by kernel_rfl))
#print axioms localLabels1_267_eq
end InitE.BackendStages.TargetChecks.Correct
