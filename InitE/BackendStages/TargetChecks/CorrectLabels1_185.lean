import InitE.BackendStages.TargetChecks.CorrectLabels0_185
import InitE.BackendStages.TargetChecks.CorrectEncode0_185
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_185_eq : LabToTarget.sectionLabels 60468 Reencode0_185.lines [] = (61144, localLabels1_185) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 60468 61144 riscvConfig.encode
    Initial185.lines Reencode0_185.lines [] Reencode0_185_eq).trans
    (localLabels0_185_eq.trans (by kernel_rfl))
#print axioms localLabels1_185_eq
end InitE.BackendStages.TargetChecks.Correct
