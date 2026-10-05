import Tools.GenSmallStages
import InitE.SmallStages.Oracles838
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 838 InitE.WordStages.source838.2.1 InitE.WordStages.source838.2.2 InitE.SmallStages.Oracles838.oracle838
