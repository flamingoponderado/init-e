import Tools.GenSmallStages
import InitE.SmallStages.Oracles618
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 618 InitE.WordStages.source618.2.1 InitE.WordStages.source618.2.2 InitE.SmallStages.Oracles618.oracle618
