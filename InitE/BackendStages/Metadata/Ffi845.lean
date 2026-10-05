import InitE.BackendStages.Metadata.Data845
import InitE.BackendStages.Filtered845
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis845_eq : ffiLines Filtered845.lines = localFfis845 := by
  with_unfolding_all rfl
theorem ffiStep845 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis845) : LabToTarget.findFfiNames (Filtered845 :: rest) = suffixFfis845 := by
  rw [findFfiNames_section, localFfis845_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep845
end InitE.BackendStages.Metadata
