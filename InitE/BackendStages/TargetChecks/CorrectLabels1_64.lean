import InitE.BackendStages.TargetChecks.CorrectLabels0_64
import InitE.BackendStages.TargetChecks.CorrectEncode0_64
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_64_eq : LabToTarget.sectionLabels 1112 Reencode0_64.lines [] = (2252, localLabels1_64) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 1112 2252 riscvConfig.encode
    Initial64.lines Reencode0_64.lines [] Reencode0_64_eq).trans
    (localLabels0_64_eq.trans (by kernel_rfl))
#print axioms localLabels1_64_eq
end InitE.BackendStages.TargetChecks.Correct
