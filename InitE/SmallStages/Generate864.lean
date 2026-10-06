import Tools.GenSmallStages
import InitE.SmallStages.Oracles864
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 864 InitE.WordStages.source864.2.1 InitE.WordStages.source864.2.2 InitE.SmallStages.Oracles864.oracle864
