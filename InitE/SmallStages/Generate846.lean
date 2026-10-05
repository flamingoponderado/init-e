import Tools.GenSmallStages
import InitE.SmallStages.Oracles846
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 846 InitE.WordStages.source846.2.1 InitE.WordStages.source846.2.2 InitE.SmallStages.Oracles846.oracle846
