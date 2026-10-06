import InitE.BackendStages.TargetChecks.CorrectLabels0_220
import InitE.BackendStages.TargetChecks.CorrectEncode0_220
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_220_eq : LabToTarget.sectionLabels 81956 Reencode0_220.lines [] = (82024, localLabels1_220) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 81956 82024 riscvConfig.encode
    Initial220.lines Reencode0_220.lines [] Reencode0_220_eq).trans
    (localLabels0_220_eq.trans (by kernel_rfl))
#print axioms localLabels1_220_eq
end InitE.BackendStages.TargetChecks.Correct
