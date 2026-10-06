import InitE.BackendStages.TargetChecks.CorrectLabels0_512
import InitE.BackendStages.TargetChecks.CorrectEncode0_512
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_512
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_512_eq : LabToTarget.sectionLabels 360216 Reencode0_512.lines [] = (361088, localLabels1_512) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 360216 361088 riscvConfig.encode
    Initial512.lines Reencode0_512.lines [] Reencode0_512_eq).trans
    (localLabels0_512_eq.trans (by kernel_rfl))
#print axioms localLabels1_512_eq
end InitE.BackendStages.TargetChecks.Correct
