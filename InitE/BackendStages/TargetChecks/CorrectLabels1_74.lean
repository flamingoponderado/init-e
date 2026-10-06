import InitE.BackendStages.TargetChecks.CorrectLabels0_74
import InitE.BackendStages.TargetChecks.CorrectEncode0_74
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_74
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_74_eq : LabToTarget.sectionLabels 7112 Reencode0_74.lines [] = (7552, localLabels1_74) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 7112 7552 riscvConfig.encode
    Initial74.lines Reencode0_74.lines [] Reencode0_74_eq).trans
    (localLabels0_74_eq.trans (by kernel_rfl))
#print axioms localLabels1_74_eq
end InitE.BackendStages.TargetChecks.Correct
