import InitE.BackendStages.Metadata.Data847
import InitE.BackendStages.Filtered847
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis847_eq : ffiLines Filtered847.lines = localFfis847 := by
  with_unfolding_all rfl
theorem ffiStep847 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis847) : LabToTarget.findFfiNames (Filtered847 :: rest) = suffixFfis847 := by
  rw [findFfiNames_section, localFfis847_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep847
end InitE.BackendStages.Metadata
